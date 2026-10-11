.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdx;",
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

    const-string v2, "ctmdxca60type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdx;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdx;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewK()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxKPI;
.end method

.method public abstract addNewMs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;
.end method

.method public abstract addNewP()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMemeberProp;
.end method

.method public abstract addNewT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;
.end method

.method public abstract getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;
.end method

.method public abstract getK()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxKPI;
.end method

.method public abstract getMs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;
.end method

.method public abstract getN()J
.end method

.method public abstract getP()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMemeberProp;
.end method

.method public abstract getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;
.end method

.method public abstract isSetK()Z
.end method

.method public abstract isSetMs()Z
.end method

.method public abstract isSetP()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;)V
.end method

.method public abstract setK(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxKPI;)V
.end method

.method public abstract setMs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;)V
.end method

.method public abstract setN(J)V
.end method

.method public abstract setP(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMemeberProp;)V
.end method

.method public abstract setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxTuple;)V
.end method

.method public abstract unsetK()V
.end method

.method public abstract unsetMs()V
.end method

.method public abstract unsetP()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;
.end method

.method public abstract xgetN()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;)V
.end method

.method public abstract xsetN(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
