.class public abstract Lcom/sun/java_cup/internal/runtime/lr_parser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final _error_sync_size:I = 0x3


# instance fields
.field protected _done_parsing:Z

.field private _scanner:Lcom/sun/java_cup/internal/runtime/Scanner;

.field protected action_tab:[[S

.field protected cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

.field protected lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

.field protected lookahead_pos:I

.field protected production_tab:[[S

.field protected reduce_tab:[[S

.field protected stack:Ljava/util/Stack;

.field protected tos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lcom/sun/java_cup/internal/runtime/Scanner;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->setScanner(Lcom/sun/java_cup/internal/runtime/Scanner;)V

    return-void
.end method

.method public static unpackFromStrings([Ljava/lang/String;)[[S
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    or-int/2addr p0, v2

    new-array v2, p0, [[S

    const/4 v3, 0x2

    move v4, v1

    move v5, v3

    :goto_1
    if-ge v4, p0, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    or-int/2addr v6, v7

    add-int/2addr v5, v3

    new-array v7, v6, [S

    aput-object v7, v2, v4

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v2, v4

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, v8, v7

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public abstract EOF_sym()I
.end method

.method public abstract action_table()[[S
.end method

.method public advance_lookahead()Z
    .locals 2

    iget v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sync_size()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;
    .locals 1

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    iget p0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public debug_message(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public debug_parse()Lcom/sun/java_cup/internal/runtime/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->action_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->action_tab:[[S

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->reduce_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->reduce_tab:[[S

    const-string v0, "# Initializing parser"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->init_actions()V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->user_init()V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Current Symbol is #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->start_state()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    iput-boolean v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-boolean v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {p0, v1, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v1, v1, -0x1

    iput v1, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v2, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    invoke-virtual {p0, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_shift(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Current token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    neg-int v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    iget v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0, v0, p0, v1, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->do_action(ILcom/sun/java_cup/internal/runtime/lr_parser;Ljava/util/Stack;I)Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    aget-object v4, v4, v0

    aget-short v5, v4, v3

    aget-short v4, v4, v2

    invoke-virtual {p0, v0, v5, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_reduce(III)V

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0, v0, v5}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_reduce(II)S

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Reduce rule: top state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lhs sym "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    iput v0, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v2, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Goto state #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    invoke-virtual {p0, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_recovery(Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->unrecovered_syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->done_parsing()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Symbol recycling detected (fix your scanner)."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object v0
.end method

.method public debug_reduce(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Reduce with prod #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [NT="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SZ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    return-void
.end method

.method public debug_shift(Lcom/sun/java_cup/internal/runtime/Symbol;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Shift under term #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to state #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    return-void
.end method

.method public debug_stack()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "## STACK:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sym "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    rem-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "         "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract do_action(ILcom/sun/java_cup/internal/runtime/lr_parser;Ljava/util/Stack;I)Lcom/sun/java_cup/internal/runtime/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public done_parsing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    return-void
.end method

.method public dump_stack()V
    .locals 3

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    if-nez v0, :cond_0

    const-string v0, "# Stack dump requested, but stack is null"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "============ Parse Stack Dump ============"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "=========================================="

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    return-void
.end method

.method public error_recovery(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "# Attempting error recovery"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->find_recovery_config(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const-string p1, "# Error recovery fails"

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->read_lookahead()V

    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "# Trying to parse ahead"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->try_parse_ahead(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const-string v0, "# Parse-ahead ok, going back to normal parse"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->parse_lookahead(Z)V

    const/4 p0, 0x1

    return p0

    :cond_5
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->EOF_sym()I

    move-result v2

    if-ne v0, v2, :cond_7

    if-eqz p1, :cond_6

    const-string p1, "# Error recovery fails at EOF"

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_6
    return v1

    :cond_7
    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Consuming Symbol #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v2

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->restart_lookahead()V

    goto :goto_0
.end method

.method public abstract error_sym()I
.end method

.method public error_sync_size()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public find_recovery_config(Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "# Finding recovery state on stack"

    invoke-virtual {p0, v0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    :cond_1
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->shift_under_error()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Pop stack by one, state was # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    iget v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    const-string p1, "# No recovery state found on stack"

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sym()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result v2

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Recover state found (#"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Shifting on error to state #"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_5
    new-instance p1, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sym()I

    move-result v4

    invoke-direct {p1, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(III)V

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v3, p1, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    return v3
.end method

.method public getScanner()Lcom/sun/java_cup/internal/runtime/Scanner;
    .locals 0

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_scanner:Lcom/sun/java_cup/internal/runtime/Scanner;

    return-object p0
.end method

.method public final get_action(II)S
    .locals 4

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->action_tab:[[S

    aget-object p0, p0, p1

    array-length p1, p0

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    move p1, v1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-short p1, p0, p1

    if-eq p1, p2, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-short p0, p0, v0

    return p0

    :cond_2
    return v1

    :cond_3
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-gt v1, p1, :cond_6

    add-int v0, v1, p1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v0, 0x2

    aget-short v3, p0, v2

    if-ne p2, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    aget-short p0, p0, v2

    return p0

    :cond_4
    if-le p2, v3, :cond_5

    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 p1, v0, -0x1

    goto :goto_2

    :cond_6
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-short p0, p0, p1

    return p0
.end method

.method public final get_reduce(II)S
    .locals 2

    iget-object p0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->reduce_tab:[[S

    aget-object p0, p0, p1

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-short v0, p0, v0

    if-eq v0, p2, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    aget-short p0, p0, v1

    return p0

    :cond_3
    return p1
.end method

.method public abstract init_actions()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public parse()Lcom/sun/java_cup/internal/runtime/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->action_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->action_tab:[[S

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->reduce_table()[[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->reduce_tab:[[S

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->init_actions()V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->user_init()V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->start_state()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    iput-boolean v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-boolean v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {p0, v1, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v1, v1, -0x1

    iput v1, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v2, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    goto :goto_0

    :cond_1
    if-gez v1, :cond_3

    neg-int v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    iget v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0, v0, p0, v1, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->do_action(ILcom/sun/java_cup/internal/runtime/lr_parser;Ljava/util/Stack;I)Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v1

    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    aget-object v0, v4, v0

    aget-short v4, v0, v3

    aget-short v0, v0, v2

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0, v0, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_reduce(II)S

    move-result v0

    iput v0, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v2, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    invoke-virtual {p0, v3}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_recovery(Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->unrecovered_syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->done_parsing()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Symbol recycling detected (fix your scanner)."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object v0
.end method

.method public parse_lookahead(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    const-string v1, "# Current Symbol is #"

    if-eqz p1, :cond_0

    const-string v2, "# Reparsing saved input with actions"

    invoke-virtual {p0, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v3

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Current state is #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_done_parsing:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v4

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {p0, v3, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v5

    add-int/lit8 v3, v3, -0x1

    iput v3, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v3

    iput-boolean v4, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_shift(Lcom/sun/java_cup/internal/runtime/Symbol;)V

    :cond_2
    iget-object v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->advance_lookahead()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    const-string p1, "# Completed reparse"

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v4

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-gez v3, :cond_9

    neg-int v2, v3

    sub-int/2addr v2, v4

    iget-object v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    iget v5, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    invoke-virtual {p0, v2, p0, v3, v5}, Lcom/sun/java_cup/internal/runtime/lr_parser;->do_action(ILcom/sun/java_cup/internal/runtime/lr_parser;Ljava/util/Stack;I)Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v3

    iget-object v5, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    aget-object v5, v5, v2

    aget-short v6, v5, v0

    aget-short v5, v5, v4

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v6, v5}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_reduce(III)V

    :cond_6
    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_7

    iget-object v7, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget v7, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0, v2, v6}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_reduce(II)S

    move-result v2

    iput v2, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    iput-boolean v4, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    iget-object v5, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->tos:I

    if-eqz p1, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Goto state #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_8
    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_1

    const-string p1, "Syntax error"

    invoke-virtual {p0, p1, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->report_fatal_error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public abstract production_table()[[S
.end method

.method public read_lookahead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sync_size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/java_cup/internal/runtime/Symbol;

    iput-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sync_size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    return-void
.end method

.method public abstract reduce_table()[[S
.end method

.method public report_error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    instance-of p0, p2, Lcom/sun/java_cup/internal/runtime/Symbol;

    const-string p1, ""

    if-eqz p0, :cond_1

    check-cast p2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget p0, p2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " at character "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of input"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public report_fatal_error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->done_parsing()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->report_error(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Can\'t recover from previous error(s)"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restart_lookahead()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sync_size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, v1, -0x1

    aget-object v4, v2, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->scan()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead:[Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sync_size()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_token:Lcom/sun/java_cup/internal/runtime/Symbol;

    aput-object v0, v1, v2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->lookahead_pos:I

    return-void
.end method

.method public scan()Lcom/sun/java_cup/internal/runtime/Symbol;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->getScanner()Lcom/sun/java_cup/internal/runtime/Scanner;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/java_cup/internal/runtime/Scanner;->next_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public setScanner(Lcom/sun/java_cup/internal/runtime/Scanner;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->_scanner:Lcom/sun/java_cup/internal/runtime/Scanner;

    return-void
.end method

.method public shift_under_error()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->error_sym()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract start_production()I
.end method

.method public abstract start_state()I
.end method

.method public syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V
    .locals 1

    const-string v0, "Syntax error"

    invoke-virtual {p0, v0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->report_error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public try_parse_ahead(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;

    iget-object v1, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->stack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;-><init>(Ljava/util/Stack;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->top()I

    move-result v1

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v2

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {p0, v1, v2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_action(II)S

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->push(I)V

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Parse-ahead shifts Symbol #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->cur_err_token()Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object v4

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into state #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->advance_lookahead()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_3
    neg-int v1, v1

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/sun/java_cup/internal/runtime/lr_parser;->start_production()I

    move-result v4

    if-ne v1, v4, :cond_5

    if-eqz p1, :cond_4

    const-string p1, "# Parse-ahead accepts"

    invoke-virtual {p0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    iget-object v4, p0, Lcom/sun/java_cup/internal/runtime/lr_parser;->production_tab:[[S

    aget-object v1, v4, v1

    aget-short v4, v1, v2

    aget-short v1, v1, v3

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {v0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->pop()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Parse-ahead reduces: handle size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lhs = #"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from state #"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->top()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->top()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->get_reduce(II)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->push(I)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Goto state #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/java_cup/internal/runtime/virtual_parse_stack;->top()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->debug_message(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unrecovered_syntax_error(Lcom/sun/java_cup/internal/runtime/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Couldn\'t repair and continue parse"

    invoke-virtual {p0, v0, p1}, Lcom/sun/java_cup/internal/runtime/lr_parser;->report_fatal_error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public user_init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
