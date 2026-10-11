.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;",
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

    const-string v2, "cttuplecache39a3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewEntries()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewQueryCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;
.end method

.method public abstract addNewServerFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;
.end method

.method public abstract addNewSets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSets;
.end method

.method public abstract getEntries()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getQueryCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;
.end method

.method public abstract getServerFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;
.end method

.method public abstract getSets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSets;
.end method

.method public abstract isSetEntries()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetQueryCache()Z
.end method

.method public abstract isSetServerFormats()Z
.end method

.method public abstract isSetSets()Z
.end method

.method public abstract setEntries(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setQueryCache(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;)V
.end method

.method public abstract setServerFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTServerFormats;)V
.end method

.method public abstract setSets(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSets;)V
.end method

.method public abstract unsetEntries()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetQueryCache()V
.end method

.method public abstract unsetServerFormats()V
.end method

.method public abstract unsetSets()V
.end method
