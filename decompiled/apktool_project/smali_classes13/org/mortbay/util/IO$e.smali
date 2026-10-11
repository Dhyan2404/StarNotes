.class public Lorg/mortbay/util/IO$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:Lorg/mortbay/util/IO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mortbay/util/IO;

    invoke-direct {v0}, Lorg/mortbay/util/IO;-><init>()V

    sput-object v0, Lorg/mortbay/util/IO$e;->a:Lorg/mortbay/util/IO;

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
