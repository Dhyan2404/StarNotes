.class final Lorg/apache/poi/hwpf/usermodel/FieldsImpl$PlexOfFieldComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwpf/usermodel/FieldsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlexOfFieldComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/hwpf/model/PlexOfField;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hwpf/usermodel/FieldsImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hwpf/usermodel/FieldsImpl$PlexOfFieldComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hwpf/model/PlexOfField;

    check-cast p2, Lorg/apache/poi/hwpf/model/PlexOfField;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/usermodel/FieldsImpl$PlexOfFieldComparator;->compare(Lorg/apache/poi/hwpf/model/PlexOfField;Lorg/apache/poi/hwpf/model/PlexOfField;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/poi/hwpf/model/PlexOfField;Lorg/apache/poi/hwpf/model/PlexOfField;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PlexOfField;->getFcStart()I

    move-result p0

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/model/PlexOfField;->getFcStart()I

    move-result p1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
