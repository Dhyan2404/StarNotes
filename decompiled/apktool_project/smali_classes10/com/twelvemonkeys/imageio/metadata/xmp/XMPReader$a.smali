.class public Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;->a(Lorg/w3c/dom/NamedNodeMap;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/w3c/dom/NamedNodeMap;

.field public final synthetic f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;->f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;->e:Lorg/w3c/dom/NamedNodeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a$a;-><init>(Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$a;)V

    return-object v0
.end method
