.class public final synthetic Lorg/apache/xmlbeans/impl/store/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/y;->e:Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/y;->e:Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;->a(Lorg/apache/xmlbeans/impl/store/DomImpl$ElementsNodeList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
