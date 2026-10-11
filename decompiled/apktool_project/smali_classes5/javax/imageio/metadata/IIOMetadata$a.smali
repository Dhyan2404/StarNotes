.class public Ljavax/imageio/metadata/IIOMetadata$a;
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
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljavax/imageio/metadata/IIOMetadata;


# direct methods
.method public constructor <init>(Ljavax/imageio/metadata/IIOMetadata;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata$a;->b:Ljavax/imageio/metadata/IIOMetadata;

    iput-object p2, p0, Ljavax/imageio/metadata/IIOMetadata$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadata$a;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
