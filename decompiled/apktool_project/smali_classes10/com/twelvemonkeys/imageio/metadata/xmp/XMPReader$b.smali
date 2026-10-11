.class public Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;->b(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;
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
.field public final synthetic e:Lorg/w3c/dom/NodeList;

.field public final synthetic f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;Lorg/w3c/dom/NodeList;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b;->f:Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b;->e:Lorg/w3c/dom/NodeList;

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

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b$a;-><init>(Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader$b;)V

    return-object v0
.end method
