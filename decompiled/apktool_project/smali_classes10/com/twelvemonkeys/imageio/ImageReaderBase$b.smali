.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$b;
.super Ljava/awt/event/WindowAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/WindowEvent;)V
    .locals 0

    invoke-static {}, Ljava/awt/Window;->getWindows()[Ljava/awt/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method
