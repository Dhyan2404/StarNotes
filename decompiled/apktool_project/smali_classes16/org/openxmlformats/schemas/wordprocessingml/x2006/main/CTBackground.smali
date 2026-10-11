.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBackground;",
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

    const-string v2, "ctbackground96batype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBackground;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBackground;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getColor()Ljava/lang/Object;
.end method

.method public abstract getDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
.end method

.method public abstract getThemeShade()[B
.end method

.method public abstract getThemeTint()[B
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetDrawing()Z
.end method

.method public abstract isSetThemeColor()Z
.end method

.method public abstract isSetThemeShade()Z
.end method

.method public abstract isSetThemeTint()Z
.end method

.method public abstract setColor(Ljava/lang/Object;)V
.end method

.method public abstract setDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)V
.end method

.method public abstract setThemeColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;)V
.end method

.method public abstract setThemeShade([B)V
.end method

.method public abstract setThemeTint([B)V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetDrawing()V
.end method

.method public abstract unsetThemeColor()V
.end method

.method public abstract unsetThemeShade()V
.end method

.method public abstract unsetThemeTint()V
.end method

.method public abstract xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;
.end method

.method public abstract xgetThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;
.end method

.method public abstract xgetThemeShade()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xgetThemeTint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;
.end method

.method public abstract xsetColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;)V
.end method

.method public abstract xsetThemeColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;)V
.end method

.method public abstract xsetThemeShade(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method

.method public abstract xsetThemeTint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUcharHexNumber;)V
.end method
