.class public final synthetic Lcom/sunia/HTREnginev2/oef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Ljava/util/function/Function;

.field public final synthetic f:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oef;->e:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oef;->f:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oef;->e:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oef;->f:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->e0(Ljava/util/function/Function;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
