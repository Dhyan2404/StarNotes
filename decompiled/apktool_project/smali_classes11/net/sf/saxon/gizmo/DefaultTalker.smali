.class public Lnet/sf/saxon/gizmo/DefaultTalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/gizmo/Talker;


# instance fields
.field public a:Ljava/util/Scanner;

.field public b:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Lnet/sf/saxon/gizmo/DefaultTalker;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/gizmo/DefaultTalker;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/gizmo/DefaultTalker;->a:Ljava/util/Scanner;

    .line 5
    iput-object p2, p0, Lnet/sf/saxon/gizmo/DefaultTalker;->b:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public exchange(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/gizmo/DefaultTalker;->b:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/gizmo/DefaultTalker;->a:Ljava/util/Scanner;

    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
