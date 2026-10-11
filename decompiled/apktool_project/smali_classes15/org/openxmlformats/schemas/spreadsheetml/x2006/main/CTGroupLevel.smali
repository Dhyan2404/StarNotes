.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevel;",
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

    const-string v2, "ctgrouplevel558etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevel;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevel;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroups;
.end method

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getCustomRollUp()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroups;
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method

.method public abstract getUser()Z
.end method

.method public abstract isSetCustomRollUp()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGroups()Z
.end method

.method public abstract isSetUser()Z
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setCustomRollUp(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGroups(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroups;)V
.end method

.method public abstract setUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setUser(Z)V
.end method

.method public abstract unsetCustomRollUp()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGroups()V
.end method

.method public abstract unsetUser()V
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCustomRollUp()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUser()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCustomRollUp(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUser(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
