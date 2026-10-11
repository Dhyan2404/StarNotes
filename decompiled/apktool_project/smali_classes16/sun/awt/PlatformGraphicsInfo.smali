.class public Lsun/awt/PlatformGraphicsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGE()Ljava/awt/GraphicsEnvironment;
    .locals 1

    new-instance v0, Ljava/awt/AndroidGraphicsEnvironment;

    invoke-direct {v0}, Ljava/awt/AndroidGraphicsEnvironment;-><init>()V

    return-object v0
.end method

.method public static createToolkit()Ljava/awt/Toolkit;
    .locals 1

    new-instance v0, Ljava/awt/AndroidToolkit;

    invoke-direct {v0}, Ljava/awt/AndroidToolkit;-><init>()V

    return-object v0
.end method

.method public static getDefaultHeadlessMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "\nThe application does not have desktop access,\nbut this program performed an operation which requires it."

    return-object v0
.end method

.method public static getDefaultHeadlessProperty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
