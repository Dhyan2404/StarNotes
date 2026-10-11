.class public final synthetic Lcom/sunia/HTREnginev2/tke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tke;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tke;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tke;->g:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tke;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tke;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tke;->g:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->M0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method
