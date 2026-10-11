.class public final synthetic Lcom/sunia/HTREnginev2/i2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i2n;->e:Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i2n;->e:Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->getAll()Lorg/apache/xmlbeans/impl/xb/xsdschema/All;

    move-result-object p0

    return-object p0
.end method
