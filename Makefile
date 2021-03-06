# **************************************************************************** #
# GENERIC_VARIABLES

OBJ_DIR = build

# **************************************************************************** #
# COMPILER_OPTIONS

C_COMPILER = clang
C_STANDART = -std=c99
C_CFLAGS =  $(CFLAGS) $(CPPFLAGS) -Wall -Wextra -Werror
C_LFLAGS =  $(CFLAGS) $(CPPFLAGS) -Wall -Wextra -Werror

# **************************************************************************** #
# PRINTF TARGET DESCRIPTION

PRINTF_NAME = printf
PRINTF_PATH = ft_printf
PRINTF_FILE = ft_printf/libprintf.a
PRINTF_SRCS = print_utils.c ft_printf.c print_values.c parse.c
PRINTF_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(PRINTF_SRCS))
PRINTF_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(PRINTF_SRCS))
PRINTF_LIBS = 
PRINTF_INCS = -I libft -I ft_printf

# **************************************************************************** #
# BUILTINS TARGET DESCRIPTION

BUILTINS_NAME = builtins
BUILTINS_PATH = builtins
BUILTINS_FILE = builtins/libbuiltins.a
BUILTINS_SRCS = elista_utils.c blt_export.c blt_cd.c blt_pwd.c blt_env.c blt_get_func.c blt_echo.c elista_export.c blt_dummy.c blt_unset.c blt_exit.c
BUILTINS_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(BUILTINS_SRCS))
BUILTINS_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(BUILTINS_SRCS))
BUILTINS_LIBS = 
BUILTINS_INCS = -I env_var -I libft -I errors -I ft_printf -I executor -I cmd_opts

# **************************************************************************** #
# TOKENIZER TARGET DESCRIPTION

TOKENIZER_NAME = tokenizer
TOKENIZER_PATH = tokenizer
TOKENIZER_FILE = tokenizer/libtokenizer.a
TOKENIZER_SRCS = tokenizer_comma.c tokenizer_word.c tokenizer_space.c tokenizer_pipe.c tokenizer_utils.c tokenizer_dquote.c tokenizer_var.c tokenizer_rdrs.c tokenizer_end.c tokenizer_squote.c tokenizer_arrs.c tokenizer.c
TOKENIZER_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(TOKENIZER_SRCS))
TOKENIZER_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(TOKENIZER_SRCS))
TOKENIZER_LIBS = 
TOKENIZER_INCS = -I tokenizer -I ft_printf -I libft -I errors

# **************************************************************************** #
# SIGNAL TARGET DESCRIPTION

SIGNAL_NAME = signal
SIGNAL_PATH = signal
SIGNAL_FILE = signal/libsignal.a
SIGNAL_SRCS = shell_signals.c
SIGNAL_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(SIGNAL_SRCS))
SIGNAL_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(SIGNAL_SRCS))
SIGNAL_LIBS = 
SIGNAL_INCS = -I shell_signals -I readline -I ft_printf

# **************************************************************************** #
# PARSER TARGET DESCRIPTION

PARSER_NAME = parser
PARSER_PATH = parser
PARSER_FILE = parser/libparser.a
PARSER_SRCS = prs_make_tkn_group.c prs_dereference_var.c prs_create_instruction_list.c prs_setup_filenames.c mini_tokenizer_arrs.c prs_utils.c prs_join_words.c mini_tokenizer.c parser.c prs_check_errors.c
PARSER_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(PARSER_SRCS))
PARSER_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(PARSER_SRCS))
PARSER_LIBS = 
PARSER_INCS = -I tokenizer -I ft_printf -I errors -I env_var -I parser -I libft -I .

# **************************************************************************** #
# ERR-MINISHELL TARGET DESCRIPTION

ERR-MINISHELL_NAME = err-minishell
ERR-MINISHELL_PATH = errors
ERR-MINISHELL_FILE = errors/liberr-minishell.a
ERR-MINISHELL_SRCS = err_msg.c
ERR-MINISHELL_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(ERR-MINISHELL_SRCS))
ERR-MINISHELL_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(ERR-MINISHELL_SRCS))
ERR-MINISHELL_LIBS = 
ERR-MINISHELL_INCS = -I ft_printf

# **************************************************************************** #
# ENV-VAR TARGET DESCRIPTION

ENV-VAR_NAME = env-var
ENV-VAR_PATH = env_var
ENV-VAR_FILE = env_var/libenv-var.a
ENV-VAR_SRCS = env_path.c env_get_set.c env_rm.c env_import_export.c
ENV-VAR_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(ENV-VAR_SRCS))
ENV-VAR_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(ENV-VAR_SRCS))
ENV-VAR_LIBS = 
ENV-VAR_INCS = -I env_var -I libft -I errors

# **************************************************************************** #
# EXECUTOR TARGET DESCRIPTION

EXECUTOR_NAME = executor
EXECUTOR_PATH = executor
EXECUTOR_FILE = executor/libexecutor.a
EXECUTOR_SRCS = executor.c exit_code.c forky_utils.c forky_builtin_rdr.c redirection.c forky_binary.c forky_builtin.c executor_utils.c
EXECUTOR_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(EXECUTOR_SRCS))
EXECUTOR_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(EXECUTOR_SRCS))
EXECUTOR_LIBS = 
EXECUTOR_INCS = -I libft -I env_var -I builtins -I ft_printf -I errors -I signal -I .

# **************************************************************************** #
# MINISHELL TARGET DESCRIPTION

MINISHELL_NAME = minishell
MINISHELL_PATH = .
MINISHELL_FILE = ./minishell
MINISHELL_SRCS = main.c
MINISHELL_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(MINISHELL_SRCS))
MINISHELL_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(MINISHELL_SRCS))
MINISHELL_LIBS = -l executor -L executor -l parser -L parser -l readline -L readline -l builtins -L builtins -l tokenizer -L tokenizer -l env-var -L env_var -l ms-opts -L cmd_opts -l printf -L ft_printf -l ft -L libft -l err-minishell -L errors -l signal -L signal
MINISHELL_INCS = -I tokenizer -I parser -I errors -I libft -I env_var -I builtins -I readline -I executor -I ft_printf -I signal -I . -I cmd_opts

# **************************************************************************** #
# FT TARGET DESCRIPTION

FT_NAME = ft
FT_PATH = libft
FT_FILE = libft/libft.a
FT_SRCS = ft_strnstr.c ft_isdigit.c ft_putstr_fd.c dlst_elem.c dlst_push_back.c ft_strlcpy.c ft_strlen.c ft_memcmp.c ft_putnbr_fd.c ft_strchr.c ft_bzero.c ft_strjoin.c ft_isascii.c ft_memcpy.c get_next_line.c ft_memccpy.c ft_isprint.c dlst_insert.c dlst_pop_back.c ft_putendl_fd.c ft_toupper.c ft_split.c dlst_push_front.c ft_strrchr.c dlst_del.c dlst_size.c ft_isalpha.c ft_memchr.c ft_putchar_fd.c ft_memset.c ft_substr.c ft_strncmp.c dlst_del_elem.c ft_strmapi.c ft_strtrim.c ft_memmove.c ft_strlcat.c ft_calloc.c ft_strdup.c dlst_pop_front.c ft_atoi.c ft_strappend.c ft_isalnum.c ft_itoa.c ft_isspace.c ft_tolower.c ft_strcmp.c
FT_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(FT_SRCS))
FT_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(FT_SRCS))
FT_LIBS = 
FT_INCS = -I libft

# **************************************************************************** #
# READLINE TARGET DESCRIPTION

READLINE_NAME = readline
READLINE_PATH = readline
READLINE_FILE = readline/libreadline.a
READLINE_SRCS = readline_utils.c readline_prompt.c readline.c
READLINE_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(READLINE_SRCS))
READLINE_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(READLINE_SRCS))
READLINE_LIBS = 
READLINE_INCS = -I readline -I libft -I signal -I ft_printf

# **************************************************************************** #
# MS-OPTS TARGET DESCRIPTION

MS-OPTS_NAME = ms-opts
MS-OPTS_PATH = cmd_opts
MS-OPTS_FILE = cmd_opts/libms-opts.a
MS-OPTS_SRCS = cmd_opts.c cmd_greetings.c
MS-OPTS_OBJS = $(patsubst %, $(OBJ_DIR)/%.o, $(MS-OPTS_SRCS))
MS-OPTS_DEPS = $(patsubst %, $(OBJ_DIR)/%.d, $(MS-OPTS_SRCS))
MS-OPTS_LIBS = 
MS-OPTS_INCS = -I errors -I libft -I ft_printf

# **************************************************************************** #
# GENERIC RULES

.PHONY: all re clean fclean
.DEFAULT_GOAL = all

all: $(PRINTF_FILE) $(BUILTINS_FILE) $(TOKENIZER_FILE) $(SIGNAL_FILE) $(PARSER_FILE) $(ERR-MINISHELL_FILE) $(ENV-VAR_FILE) $(EXECUTOR_FILE) $(FT_FILE) $(READLINE_FILE) $(MS-OPTS_FILE) $(MINISHELL_FILE)

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(PRINTF_FILE) $(BUILTINS_FILE) $(TOKENIZER_FILE) $(SIGNAL_FILE) $(PARSER_FILE) $(ERR-MINISHELL_FILE) $(ENV-VAR_FILE) $(EXECUTOR_FILE) $(FT_FILE) $(READLINE_FILE) $(MS-OPTS_FILE) $(MINISHELL_FILE)

re: fclean all

$(PRINTF_FILE): $(PRINTF_OBJS)
	@ar rc $(PRINTF_FILE) $(PRINTF_OBJS)
	@ranlib $(PRINTF_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(PRINTF_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(PRINTF_INCS) -o $@ -c $< -MMD

$(BUILTINS_FILE): $(BUILTINS_OBJS)
	@ar rc $(BUILTINS_FILE) $(BUILTINS_OBJS)
	@ranlib $(BUILTINS_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(BUILTINS_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(BUILTINS_INCS) -o $@ -c $< -MMD

$(TOKENIZER_FILE): $(TOKENIZER_OBJS)
	@ar rc $(TOKENIZER_FILE) $(TOKENIZER_OBJS)
	@ranlib $(TOKENIZER_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(TOKENIZER_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(TOKENIZER_INCS) -o $@ -c $< -MMD

$(SIGNAL_FILE): $(SIGNAL_OBJS)
	@ar rc $(SIGNAL_FILE) $(SIGNAL_OBJS)
	@ranlib $(SIGNAL_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(SIGNAL_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(SIGNAL_INCS) -o $@ -c $< -MMD

$(PARSER_FILE): $(PARSER_OBJS)
	@ar rc $(PARSER_FILE) $(PARSER_OBJS)
	@ranlib $(PARSER_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(PARSER_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(PARSER_INCS) -o $@ -c $< -MMD

$(ERR-MINISHELL_FILE): $(ERR-MINISHELL_OBJS)
	@ar rc $(ERR-MINISHELL_FILE) $(ERR-MINISHELL_OBJS)
	@ranlib $(ERR-MINISHELL_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(ERR-MINISHELL_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(ERR-MINISHELL_INCS) -o $@ -c $< -MMD

$(ENV-VAR_FILE): $(ENV-VAR_OBJS)
	@ar rc $(ENV-VAR_FILE) $(ENV-VAR_OBJS)
	@ranlib $(ENV-VAR_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(ENV-VAR_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(ENV-VAR_INCS) -o $@ -c $< -MMD

$(EXECUTOR_FILE): $(EXECUTOR_OBJS)
	@ar rc $(EXECUTOR_FILE) $(EXECUTOR_OBJS)
	@ranlib $(EXECUTOR_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(EXECUTOR_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(EXECUTOR_INCS) -o $@ -c $< -MMD

$(MINISHELL_FILE): $(EXECUTOR_FILE) $(PARSER_FILE) $(READLINE_FILE) $(BUILTINS_FILE) $(TOKENIZER_FILE) $(ENV-VAR_FILE) $(MS-OPTS_FILE) $(PRINTF_FILE) $(FT_FILE) $(ERR-MINISHELL_FILE) $(SIGNAL_FILE) $(MINISHELL_OBJS)
	@$(C_COMPILER) $(C_LFLAGS) $(C_STANDART) -o $(MINISHELL_FILE) $(MINISHELL_OBJS)  $(MINISHELL_LIBS)
	@printf 'Finished	\033[1;32m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(MINISHELL_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(MINISHELL_INCS) -o $@ -c $< -MMD

$(FT_FILE): $(FT_OBJS)
	@ar rc $(FT_FILE) $(FT_OBJS)
	@ranlib $(FT_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(FT_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(FT_INCS) -o $@ -c $< -MMD

$(READLINE_FILE): $(READLINE_OBJS)
	@ar rc $(READLINE_FILE) $(READLINE_OBJS)
	@ranlib $(READLINE_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(READLINE_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(READLINE_INCS) -o $@ -c $< -MMD

$(MS-OPTS_FILE): $(MS-OPTS_OBJS)
	@ar rc $(MS-OPTS_FILE) $(MS-OPTS_OBJS)
	@ranlib $(MS-OPTS_FILE)
	@printf 'Finished	\033[1;36m\033[7m$@ \033[0m\n\n'

$(OBJ_DIR)/%.c.o: $(MS-OPTS_PATH)/%.c
	@mkdir -p $(OBJ_DIR)
	@printf 'Compiling	\033[1;33m$<\033[0m ...\n'
	@$(C_COMPILER) $(C_CFLAGS) $(C_STANDART) $(MS-OPTS_INCS) -o $@ -c $< -MMD

-include $(PRINTF_DEPS) $(BUILTINS_DEPS) $(TOKENIZER_DEPS) $(SIGNAL_DEPS) $(PARSER_DEPS) $(ERR-MINISHELL_DEPS) $(ENV-VAR_DEPS) $(EXECUTOR_DEPS) $(MINISHELL_DEPS) $(FT_DEPS) $(READLINE_DEPS) $(MS-OPTS_DEPS)
