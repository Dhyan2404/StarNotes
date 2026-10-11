.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFileRecoveryPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFileRecoveryPr;",
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

    const-string v2, "ctfilerecoveryprf05ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFileRecoveryPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFileRecoveryPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutoRecover()Z
.end method

.method public abstract getCrashSave()Z
.end method

.method public abstract getDataExtractLoad()Z
.end method

.method public abstract getRepairLoad()Z
.end method

.method public abstract isSetAutoRecover()Z
.end method

.method public abstract isSetCrashSave()Z
.end method

.method public abstract isSetDataExtractLoad()Z
.end method

.method public abstract isSetRepairLoad()Z
.end method

.method public abstract setAutoRecover(Z)V
.end method

.method public abstract setCrashSave(Z)V
.end method

.method public abstract setDataExtractLoad(Z)V
.end method

.method public abstract setRepairLoad(Z)V
.end method

.method public abstract unsetAutoRecover()V
.end method

.method public abstract unsetCrashSave()V
.end method

.method public abstract unsetDataExtractLoad()V
.end method

.method public abstract unsetRepairLoad()V
.end method

.method public abstract xgetAutoRecover()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCrashSave()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataExtractLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRepairLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAutoRecover(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCrashSave(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataExtractLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRepairLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
