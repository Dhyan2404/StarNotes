.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPart;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctdocpart7f27type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPart;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPart;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDocPartBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
.end method

.method public abstract addNewDocPartPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartPr;
.end method

.method public abstract getDocPartBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
.end method

.method public abstract getDocPartPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartPr;
.end method

.method public abstract isSetDocPartBody()Z
.end method

.method public abstract isSetDocPartPr()Z
.end method

.method public abstract setDocPartBody(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;)V
.end method

.method public abstract setDocPartPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartPr;)V
.end method

.method public abstract unsetDocPartBody()V
.end method

.method public abstract unsetDocPartPr()V
.end method
