#ifndef __XACOBEO_LOGGER_H
#define __XACOBEO_LOGGER_H

#ifdef HAS_DEBUG
#  define LOG(level, ...) my_logger_log(__FILE__, __LINE__, __FUNCTION__, level, __VA_ARGS__)
#else
// Trick the compiler by pretending that we are using the statement. Otherwise
// it can issue warnings regarding unused variables.
#  define LOG(level,...) if (0) my_logger_log(__FILE__, __LINE__, __FUNCTION__, level, __VA_ARGS__)
#endif


// Pseudo Log4c
#define TRACE(...) LOG("TRACE", __VA_ARGS__)
#define DEBUG(...) LOG("DEBUG", __VA_ARGS__)
#define INFO(...)  LOG("INFO",  __VA_ARGS__)
#define NOTE(...)  LOG("NOTE",  __VA_ARGS__)
#define WARN(...)  LOG("WARN",  __VA_ARGS__)
#define ERROR(...) LOG("ERROR", __VA_ARGS__)

//
// Prototypes
//

void
my_logger_log (
	const char *file, 
	int         line, 
	const char *function, 
	const char *level, 
	const char *format, 
	...
);


#endif