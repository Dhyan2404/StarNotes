.class public Ljava/awt/AndroidGraphicsDevice;
.super Ljava/awt/GraphicsDevice;
.source "SourceFile"


# instance fields
.field private configs:[Ljava/awt/GraphicsConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/GraphicsDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigurations()[Ljava/awt/GraphicsConfiguration;
    .locals 3

    iget-object v0, p0, Ljava/awt/AndroidGraphicsDevice;->configs:[Ljava/awt/GraphicsConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/GraphicsConfiguration;

    new-instance v1, Ljava/awt/AndroidGraphicsConfiguration;

    invoke-direct {v1, p0}, Ljava/awt/AndroidGraphicsConfiguration;-><init>(Ljava/awt/GraphicsDevice;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Ljava/awt/AndroidGraphicsDevice;->configs:[Ljava/awt/GraphicsConfiguration;

    :cond_0
    iget-object p0, p0, Ljava/awt/AndroidGraphicsDevice;->configs:[Ljava/awt/GraphicsConfiguration;

    return-object p0
.end method

.method public getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 1

    invoke-virtual {p0}, Ljava/awt/AndroidGraphicsDevice;->getConfigurations()[Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getIDstring()Ljava/lang/String;
    .locals 0

    const-string p0, "Android Graphics Device"

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
