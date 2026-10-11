.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleContent"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "simplecontent9a5belemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;
.end method

.method public abstract addNewRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;
.end method

.method public abstract getExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;
.end method

.method public abstract getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;
.end method

.method public abstract isSetExtension()Z
.end method

.method public abstract isSetRestriction()Z
.end method

.method public abstract setExtension(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;)V
.end method

.method public abstract setRestriction(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleRestrictionType;)V
.end method

.method public abstract unsetExtension()V
.end method

.method public abstract unsetRestriction()V
.end method
