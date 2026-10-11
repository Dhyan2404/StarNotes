.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;",
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

    const-string v2, "ctmembers9a38type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMembers;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMember()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;
.end method

.method public abstract getCount()J
.end method

.method public abstract getLevel()J
.end method

.method public abstract getMemberArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;
.end method

.method public abstract getMemberArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;
.end method

.method public abstract getMemberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewMember(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetLevel()Z
.end method

.method public abstract removeMember(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setLevel(J)V
.end method

.method public abstract setMemberArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;)V
.end method

.method public abstract setMemberArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMember;)V
.end method

.method public abstract sizeOfMemberArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetLevel()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLevel()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLevel(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
