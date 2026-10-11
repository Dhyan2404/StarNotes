.class public interface abstract Lcom/twelvemonkeys/imageio/metadata/xmp/XMP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NS_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NS_DC:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field public static final NS_EXIF:Ljava/lang/String; = "http://ns.adobe.com/exif/1.0/"

.field public static final NS_PHOTOSHOP:Ljava/lang/String; = "http://ns.adobe.com/photoshop/1.0/"

.field public static final NS_RDF:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field public static final NS_ST_REF:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

.field public static final NS_TIFF:Ljava/lang/String; = "http://ns.adobe.com/tiff/1.0/"

.field public static final NS_X:Ljava/lang/String; = "adobe:ns:meta/"

.field public static final NS_XAP:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field public static final NS_XAP_MM:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/mm/"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPNamespaceMapping;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPNamespaceMapping;-><init>(Z)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMP;->DEFAULT_NS_MAPPING:Ljava/util/Map;

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPNamespaceMapping;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPNamespaceMapping;-><init>(Z)V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMP;->ELEMENTS:Ljava/util/Set;

    return-void
.end method
