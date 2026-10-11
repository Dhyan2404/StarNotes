.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;
    }
.end annotation


# static fields
.field public static final FIT_TO_SLIDE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_FIT_TO_SLIDE:I = 0x1

.field public static final INT_X_1_PIC:I = 0x2

.field public static final INT_X_1_PIC_TITLE:I = 0x5

.field public static final INT_X_2_PIC:I = 0x3

.field public static final INT_X_2_PIC_TITLE:I = 0x6

.field public static final INT_X_4_PIC:I = 0x4

.field public static final INT_X_4_PIC_TITLE:I = 0x7

.field public static final X_1_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final X_1_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final X_2_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final X_2_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final X_4_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final X_4_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stphotoalbumlayout894etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "fitToSlide"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->FIT_TO_SLIDE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "1pic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_1_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "2pic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_2_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "4pic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_4_PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "1picTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_1_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "2picTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_2_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    const-string v0, "4picTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout;->X_4_PIC_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPhotoAlbumLayout$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
