.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;",
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

    const-string v2, "ctdxfa3b1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract addNewBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
.end method

.method public abstract addNewFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
.end method

.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract addNewProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

.method public abstract getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract getBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
.end method

.method public abstract getFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;
.end method

.method public abstract getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

.method public abstract isSetAlignment()Z
.end method

.method public abstract isSetBorder()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFont()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetProtection()Z
.end method

.method public abstract setAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V
.end method

.method public abstract setBorder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V
.end method

.method public abstract setFont(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;)V
.end method

.method public abstract setProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;)V
.end method

.method public abstract unsetAlignment()V
.end method

.method public abstract unsetBorder()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFont()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetProtection()V
.end method
