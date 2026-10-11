.class public Lorg/apache/xmlbeans/impl/validator/ValidatorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/validator/ValidatorUtil$EventImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateSimpleType(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/SchemaType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;",
            "Lorg/apache/xmlbeans/impl/common/PrefixResolver;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not a simple type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/validator/Validator;

    const/4 v4, 0x0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/validator/Validator;-><init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;)V

    new-instance p0, Lorg/apache/xmlbeans/impl/validator/ValidatorUtil$EventImpl;

    invoke-direct {p0, p3, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatorUtil$EventImpl;-><init>(Lorg/apache/xmlbeans/impl/common/PrefixResolver;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->isValid()Z

    move-result p0

    return p0
.end method
