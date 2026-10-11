.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;",
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

    const-string v2, "ctm3f8ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMPr;
.end method

.method public abstract addNewMr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;
.end method

.method public abstract getMPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMPr;
.end method

.method public abstract getMrArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;
.end method

.method public abstract getMrArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;
.end method

.method public abstract getMrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewMr(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;
.end method

.method public abstract isSetMPr()Z
.end method

.method public abstract removeMr(I)V
.end method

.method public abstract setMPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMPr;)V
.end method

.method public abstract setMrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;)V
.end method

.method public abstract setMrArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;)V
.end method

.method public abstract sizeOfMrArray()I
.end method

.method public abstract unsetMPr()V
.end method
