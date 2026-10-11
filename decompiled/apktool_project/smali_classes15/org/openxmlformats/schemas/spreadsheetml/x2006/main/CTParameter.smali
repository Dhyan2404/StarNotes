.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameter;",
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

    const-string v2, "ctparameterbe08type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBoolean()Z
.end method

.method public abstract getCell()Ljava/lang/String;
.end method

.method public abstract getDouble()D
.end method

.method public abstract getInteger()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STParameterType$Enum;
.end method

.method public abstract getPrompt()Ljava/lang/String;
.end method

.method public abstract getRefreshOnChange()Z
.end method

.method public abstract getSqlType()I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract isSetBoolean()Z
.end method

.method public abstract isSetCell()Z
.end method

.method public abstract isSetDouble()Z
.end method

.method public abstract isSetInteger()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetParameterType()Z
.end method

.method public abstract isSetPrompt()Z
.end method

.method public abstract isSetRefreshOnChange()Z
.end method

.method public abstract isSetSqlType()Z
.end method

.method public abstract isSetString()Z
.end method

.method public abstract setBoolean(Z)V
.end method

.method public abstract setCell(Ljava/lang/String;)V
.end method

.method public abstract setDouble(D)V
.end method

.method public abstract setInteger(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setParameterType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STParameterType$Enum;)V
.end method

.method public abstract setPrompt(Ljava/lang/String;)V
.end method

.method public abstract setRefreshOnChange(Z)V
.end method

.method public abstract setSqlType(I)V
.end method

.method public abstract setString(Ljava/lang/String;)V
.end method

.method public abstract unsetBoolean()V
.end method

.method public abstract unsetCell()V
.end method

.method public abstract unsetDouble()V
.end method

.method public abstract unsetInteger()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetParameterType()V
.end method

.method public abstract unsetPrompt()V
.end method

.method public abstract unsetRefreshOnChange()V
.end method

.method public abstract unsetSqlType()V
.end method

.method public abstract unsetString()V
.end method

.method public abstract xgetBoolean()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDouble()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetInteger()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetParameterType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STParameterType;
.end method

.method public abstract xgetPrompt()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRefreshOnChange()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSqlType()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetString()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetBoolean(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCell(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDouble(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetInteger(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetParameterType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STParameterType;)V
.end method

.method public abstract xsetPrompt(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRefreshOnChange(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSqlType(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetString(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
