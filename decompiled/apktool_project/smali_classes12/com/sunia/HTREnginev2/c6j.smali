.class public final Lcom/sunia/HTREnginev2/c6j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/io/PrintWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lcom/sunia/HTREnginev2/c6j;->a:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/c6j;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "exception"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/c6j;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunia/HTREnginev2/c6j;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/c6j;->a:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lcom/sunia/HTREnginev2/c6j;->a:Ljava/io/PrintWriter;

    return-void
.end method

.method public static e(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "writer"
        }
    .end annotation

    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    sput-object v0, Lcom/sunia/HTREnginev2/c6j;->a:Ljava/io/PrintWriter;

    return-void
.end method
