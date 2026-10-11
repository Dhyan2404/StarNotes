.class public Lorg/mortbay/util/ajax/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Output;


# instance fields
.field public final synthetic a:[C

.field public final synthetic b:Ljava/lang/StringBuffer;

.field public final synthetic c:Lorg/mortbay/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;[CLjava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iput-object p2, p0, Lorg/mortbay/util/ajax/c;->a:[C

    iput-object p3, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    aput-char v1, p0, v1

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/String;D)V
    .locals 3

    .line 12
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 14
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p1, v0, v2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    .line 17
    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/16 p1, 0x2c

    aput-char p1, p0, v1

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/String;J)V
    .locals 3

    .line 19
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 21
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-static {p2, p3}, Lorg/mortbay/util/TypeUtil;->newLong(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    .line 24
    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/16 p1, 0x2c

    aput-char p1, p0, v1

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 7
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/16 p1, 0x2c

    aput-char p1, p0, v1

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/String;Z)V
    .locals 3

    .line 26
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 28
    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    iget-object p1, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V

    .line 31
    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/16 p1, 0x2c

    aput-char p1, p0, v1

    return-void

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    const-string v2, "\"class\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/ajax/c;->c:Lorg/mortbay/util/ajax/JSON;

    iget-object v2, p0, Lorg/mortbay/util/ajax/c;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mortbay/util/ajax/c;->a:[C

    const/16 p1, 0x2c

    aput-char p1, p0, v1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
