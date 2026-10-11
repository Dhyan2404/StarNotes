.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCS;",
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

    const-string v2, "ctmcs4b1ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCS;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMCS;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;
.end method

.method public abstract getMcArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;
.end method

.method public abstract getMcArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;
.end method

.method public abstract getMcList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewMc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;
.end method

.method public abstract removeMc(I)V
.end method

.method public abstract setMcArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;)V
.end method

.method public abstract setMcArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMC;)V
.end method

.method public abstract sizeOfMcArray()I
.end method
