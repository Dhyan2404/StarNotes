.class public final synthetic Lcom/sunia/HTREnginev2/hql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hql;->e:Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hql;->e:Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/RestrictionTypeImpl;->setFractionDigitsArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/NumFacet;)V

    return-void
.end method
