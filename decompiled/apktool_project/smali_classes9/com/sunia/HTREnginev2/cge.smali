.class public final synthetic Lcom/sunia/HTREnginev2/cge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/common/crash/CrashHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
