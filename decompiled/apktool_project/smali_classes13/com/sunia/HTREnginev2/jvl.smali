.class public final synthetic Lcom/sunia/HTREnginev2/jvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/PrefixResolver;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/XmlCursor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jvl;->e:Lorg/apache/xmlbeans/XmlCursor;

    return-void
.end method


# virtual methods
.method public final getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jvl;->e:Lorg/apache/xmlbeans/XmlCursor;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
