.class public final synthetic Lcom/sunia/HTREnginev2/uco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/w3/x2000/x09/xmldsig/impl/X509DataTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/w3/x2000/x09/xmldsig/impl/X509DataTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uco;->e:Lorg/w3/x2000/x09/xmldsig/impl/X509DataTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uco;->e:Lorg/w3/x2000/x09/xmldsig/impl/X509DataTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/apache/xmlbeans/XmlString;

    invoke-virtual {p0, p1, p2}, Lorg/w3/x2000/x09/xmldsig/impl/X509DataTypeImpl;->xsetX509SubjectNameArray(ILorg/apache/xmlbeans/XmlString;)V

    return-void
.end method
