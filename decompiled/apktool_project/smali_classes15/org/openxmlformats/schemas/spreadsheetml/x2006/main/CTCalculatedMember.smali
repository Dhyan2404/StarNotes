.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMember;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMember;",
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

    const-string v2, "ctcalculatedmember9dc1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMember;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMember;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHierarchy()Ljava/lang/String;
.end method

.method public abstract getMdx()Ljava/lang/String;
.end method

.method public abstract getMemberName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParent()Ljava/lang/String;
.end method

.method public abstract getSet()Z
.end method

.method public abstract getSolveOrder()I
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHierarchy()Z
.end method

.method public abstract isSetMemberName()Z
.end method

.method public abstract isSetParent()Z
.end method

.method public abstract isSetSet()Z
.end method

.method public abstract isSetSolveOrder()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHierarchy(Ljava/lang/String;)V
.end method

.method public abstract setMdx(Ljava/lang/String;)V
.end method

.method public abstract setMemberName(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setParent(Ljava/lang/String;)V
.end method

.method public abstract setSet(Z)V
.end method

.method public abstract setSolveOrder(I)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHierarchy()V
.end method

.method public abstract unsetMemberName()V
.end method

.method public abstract unsetParent()V
.end method

.method public abstract unsetSet()V
.end method

.method public abstract unsetSolveOrder()V
.end method

.method public abstract xgetHierarchy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetMdx()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetMemberName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetParent()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSolveOrder()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetHierarchy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetMdx(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetMemberName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetParent(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSolveOrder(Lorg/apache/xmlbeans/XmlInt;)V
.end method
