.class public Ljavax/imageio/metadata/IIOMetadata$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljavax/imageio/metadata/IIOMetadata;


# direct methods
.method public constructor <init>(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata$b;->a:Ljavax/imageio/metadata/IIOMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
