.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;",
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

    const-string v2, "ctssubfdc5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract addNewSSubPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubPr;
.end method

.method public abstract addNewSub()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract getE()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract getSSubPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubPr;
.end method

.method public abstract getSub()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;
.end method

.method public abstract isSetSSubPr()Z
.end method

.method public abstract setE(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V
.end method

.method public abstract setSSubPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubPr;)V
.end method

.method public abstract setSub(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArg;)V
.end method

.method public abstract unsetSSubPr()V
.end method
