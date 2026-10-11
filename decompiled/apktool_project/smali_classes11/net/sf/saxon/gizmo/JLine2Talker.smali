.class public Lnet/sf/saxon/gizmo/JLine2Talker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/gizmo/Talker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/gizmo/JLine2Talker$XPathCompleter;
    }
.end annotation


# static fields
.field public static final c:Z

.field public static debugLog:Ljava/lang/StringBuilder;


# instance fields
.field public final a:Ljline/console/ConsoleReader;

.field public b:Ljline/console/completer/Completer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljline/console/ConsoleReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2}, Ljline/console/ConsoleReader;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->a:Ljline/console/ConsoleReader;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljline/console/ConsoleReader;->setExpandEvents(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljline/console/ConsoleReader;->setHistoryEnabled(Z)V

    invoke-virtual {v0}, Ljline/console/ConsoleReader;->getCompletionHandler()Ljline/console/completer/CompletionHandler;

    move-result-object v0

    check-cast v0, Ljline/console/completer/CandidateListCompletionHandler;

    invoke-virtual {v0, p0}, Ljline/console/completer/CandidateListCompletionHandler;->setPrintSpaceAfterFullCompletion(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public exchange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->a:Ljline/console/ConsoleReader;

    invoke-virtual {v0, p1}, Ljline/console/ConsoleReader;->println(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->a:Ljline/console/ConsoleReader;

    const-string p1, "/>"

    invoke-virtual {p0, p1}, Ljline/console/ConsoleReader;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setAutoCompletion(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->b:Ljline/console/completer/Completer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->a:Ljline/console/ConsoleReader;

    invoke-virtual {v1, v0}, Ljline/console/ConsoleReader;->removeCompleter(Ljline/console/completer/Completer;)Z

    :cond_0
    new-instance v0, Lnet/sf/saxon/gizmo/JLine2Talker$XPathCompleter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/gizmo/JLine2Talker$XPathCompleter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->b:Ljline/console/completer/Completer;

    iget-object p0, p0, Lnet/sf/saxon/gizmo/JLine2Talker;->a:Ljline/console/ConsoleReader;

    invoke-virtual {p0, v0}, Ljline/console/ConsoleReader;->addCompleter(Ljline/console/completer/Completer;)Z

    return-void
.end method
