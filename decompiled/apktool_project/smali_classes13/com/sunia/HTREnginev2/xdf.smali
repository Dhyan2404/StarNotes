.class public final synthetic Lcom/sunia/HTREnginev2/xdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Locale;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lorg/w3c/dom/DocumentType;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xdf;->e:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xdf;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xdf;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/xdf;->h:Lorg/w3c/dom/DocumentType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xdf;->e:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xdf;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xdf;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xdf;->h:Lorg/w3c/dom/DocumentType;

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->o(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method
