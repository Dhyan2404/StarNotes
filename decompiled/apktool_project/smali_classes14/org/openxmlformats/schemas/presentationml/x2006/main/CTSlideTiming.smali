.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;",
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

    const-string v2, "ctslidetiming4214type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBldLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getBldLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract isSetBldLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetTnLst()Z
.end method

.method public abstract setBldLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract unsetBldLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetTnLst()V
.end method
