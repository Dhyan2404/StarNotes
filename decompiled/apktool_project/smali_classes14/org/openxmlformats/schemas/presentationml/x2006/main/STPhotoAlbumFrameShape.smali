.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;
    }
.end annotation


# static fields
.field public static final FRAME_STYLE_1:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_2:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_5:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_6:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final FRAME_STYLE_7:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_FRAME_STYLE_1:I = 0x1

.field public static final INT_FRAME_STYLE_2:I = 0x2

.field public static final INT_FRAME_STYLE_3:I = 0x3

.field public static final INT_FRAME_STYLE_4:I = 0x4

.field public static final INT_FRAME_STYLE_5:I = 0x5

.field public static final INT_FRAME_STYLE_6:I = 0x6

.field public static final INT_FRAME_STYLE_7:I = 0x7

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stphotoalbumframeshapeed04type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "frameStyle1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_1:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_2:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle5"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_5:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_6:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    const-string v0, "frameStyle7"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape;->FRAME_STYLE_7:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumFrameShape$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
