.class public final synthetic Lcom/sunia/HTREnginev2/kbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/ltgfmt/impl/TestsDocumentImpl$TestsImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/ltgfmt/impl/TestsDocumentImpl$TestsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kbn;->e:Lorg/apache/xmlbeans/impl/xb/ltgfmt/impl/TestsDocumentImpl$TestsImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kbn;->e:Lorg/apache/xmlbeans/impl/xb/ltgfmt/impl/TestsDocumentImpl$TestsImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/impl/TestsDocumentImpl$TestsImpl;->sizeOfTestArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
