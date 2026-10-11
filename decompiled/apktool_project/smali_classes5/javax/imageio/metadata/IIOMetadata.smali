.class public abstract Ljavax/imageio/metadata/IIOMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected controller:Ljavax/imageio/metadata/IIOMetadataController;

.field protected defaultController:Ljavax/imageio/metadata/IIOMetadataController;

.field protected extraMetadataFormatClassNames:[Ljava/lang/String;

.field protected extraMetadataFormatNames:[Ljava/lang/String;

.field protected nativeMetadataFormatClassName:Ljava/lang/String;

.field protected nativeMetadataFormatName:Ljava/lang/String;

.field protected standardFormatSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->defaultController:Ljavax/imageio/metadata/IIOMetadataController;

    .line 7
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->controller:Ljavax/imageio/metadata/IIOMetadataController;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    .line 11
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->defaultController:Ljavax/imageio/metadata/IIOMetadataController;

    .line 12
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->controller:Ljavax/imageio/metadata/IIOMetadataController;

    .line 13
    iput-boolean p1, p0, Ljavax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    .line 14
    iput-object p2, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 16
    array-length p1, p4

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    .line 17
    array-length p1, p5

    array-length p2, p4

    if-ne p1, p2, :cond_0

    .line 18
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    .line 19
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extraMetadataFormatClassNames.length != extraMetadataFormatNames.length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extraMetadataFormatNames != null && extraMetadataFormatClassNames == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extraMetadataFormatNames.length == 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p5, :cond_4

    :goto_0
    return-void

    .line 23
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extraMetadataFormatNames == null && extraMetadataFormatClassNames != null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public activateController()Z
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->hasController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getController()Ljavax/imageio/metadata/IIOMetadataController;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/imageio/metadata/IIOMetadataController;->activate(Ljavax/imageio/metadata/IIOMetadata;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "hasController() == false!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
.end method

.method public getController()Ljavax/imageio/metadata/IIOMetadataController;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadata;->controller:Ljavax/imageio/metadata/IIOMetadataController;

    return-object p0
.end method

.method public getDefaultController()Ljavax/imageio/metadata/IIOMetadataController;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadata;->defaultController:Ljavax/imageio/metadata/IIOMetadataController;

    return-object p0
.end method

.method public getExtraMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 5

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Ljavax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->getStandardFormatInstance()Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->extraMetadataFormatClassNames:[Ljava/lang/String;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    :try_start_0
    new-instance v0, Ljavax/imageio/metadata/IIOMetadata$a;

    invoke-direct {v0, p0, p0}, Ljavax/imageio/metadata/IIOMetadata$a;-><init>(Ljavax/imageio/metadata/IIOMetadata;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    :try_start_1
    invoke-static {p1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance v0, Ljavax/imageio/metadata/IIOMetadata$b;

    invoke-direct {v0, p0}, Ljavax/imageio/metadata/IIOMetadata$b;-><init>(Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {p1, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    :goto_2
    const-string p1, "getInstance"

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/metadata/IIOMetadataFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t obtain format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported format name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMetadataFormatNames()[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "javax_imageio_1.0"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz p0, :cond_3

    array-length v6, p0

    add-int/2addr v5, v6

    :cond_3
    if-nez v5, :cond_4

    return-object v2

    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    if-eqz v0, :cond_5

    aput-object v0, v2, v3

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    if-eqz v1, :cond_6

    add-int/lit8 v0, v4, 0x1

    aput-object v1, v2, v4

    move v4, v0

    :cond_6
    if-eqz p0, :cond_7

    :goto_3
    array-length v0, p0

    if-ge v3, v0, :cond_7

    add-int/lit8 v0, v4, 0x1

    aget-object v1, p0, v3

    aput-object v1, v2, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_3

    :cond_7
    return-object v2
.end method

.method public getNativeMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    return-object p0
.end method

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardDataNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardDocumentNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardTileNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStandardTree()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_1.0"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardDataNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardDocumentNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTileNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->a(Ljavax/imageio/metadata/IIOMetadataNode;Ljavax/imageio/metadata/IIOMetadataNode;)V

    return-object v0
.end method

.method public hasController()Z
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getController()Ljavax/imageio/metadata/IIOMetadataController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isReadOnly()Z
.end method

.method public isStandardMetadataFormatSupported()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/metadata/IIOMetadata;->standardFormatSupported:Z

    return p0
.end method

.method public abstract mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public setController(Ljavax/imageio/metadata/IIOMetadataController;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->controller:Ljavax/imageio/metadata/IIOMetadataController;

    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->reset()V

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method
