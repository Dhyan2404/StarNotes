.class public final synthetic Lcom/sunia/HTREnginev2/vdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/soap/Detail;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/soap/Detail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vdf;->e:Lorg/apache/xmlbeans/impl/soap/Detail;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vdf;->e:Lorg/apache/xmlbeans/impl/soap/Detail;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->i0(Lorg/apache/xmlbeans/impl/soap/Detail;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
