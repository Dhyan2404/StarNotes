.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANDOUT_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final INT_HANDOUT_VIEW:I = 0x4

.field public static final INT_NOTES_MASTER_VIEW:I = 0x5

.field public static final INT_NOTES_VIEW:I = 0x3

.field public static final INT_OUTLINE_VIEW:I = 0x6

.field public static final INT_SLD_MASTER_VIEW:I = 0x2

.field public static final INT_SLD_SORTER_VIEW:I = 0x7

.field public static final INT_SLD_THUMBNAIL_VIEW:I = 0x8

.field public static final INT_SLD_VIEW:I = 0x1

.field public static final NOTES_MASTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final NOTES_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final OUTLINE_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final SLD_MASTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final SLD_SORTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final SLD_THUMBNAIL_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final SLD_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stviewtype8eb6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "sldView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->SLD_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "sldMasterView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->SLD_MASTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "notesView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->NOTES_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "handoutView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->HANDOUT_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "notesMasterView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->NOTES_MASTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "outlineView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->OUTLINE_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "sldSorterView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->SLD_SORTER_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    const-string v0, "sldThumbnailView"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;->SLD_THUMBNAIL_VIEW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
