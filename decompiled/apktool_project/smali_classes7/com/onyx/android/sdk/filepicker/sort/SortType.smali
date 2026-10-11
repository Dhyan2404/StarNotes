.class public final enum Lcom/onyx/android/sdk/filepicker/sort/SortType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0008\u0002\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u00a2\u0006\u0002\u0010\u0006R%\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lkotlin/Comparator;",
        "(Ljava/lang/String;ILjava/util/Comparator;)V",
        "getComparator",
        "()Ljava/util/Comparator;",
        "NAME",
        "SIZE",
        "TIME",
        "NONE",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/filepicker/sort/SortType;

.field public static final enum NAME:Lcom/onyx/android/sdk/filepicker/sort/SortType;

.field public static final enum NONE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

.field public static final enum SIZE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

.field public static final enum TIME:Lcom/onyx/android/sdk/filepicker/sort/SortType;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->NAME:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    sget-object v1, Lcom/onyx/android/sdk/filepicker/sort/SortType;->SIZE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    sget-object v2, Lcom/onyx/android/sdk/filepicker/sort/SortType;->TIME:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    sget-object v3, Lcom/onyx/android/sdk/filepicker/sort/SortType;->NONE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/android/sdk/filepicker/sort/SortType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/sort/NameComparator;

    invoke-direct {v1}, Lcom/onyx/android/sdk/filepicker/sort/NameComparator;-><init>()V

    const-string v2, "NAME"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/filepicker/sort/SortType;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->NAME:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/sort/SizeComparator;

    invoke-direct {v1}, Lcom/onyx/android/sdk/filepicker/sort/SizeComparator;-><init>()V

    const-string v2, "SIZE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/filepicker/sort/SortType;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->SIZE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/sort/TimeComparator;

    invoke-direct {v1}, Lcom/onyx/android/sdk/filepicker/sort/TimeComparator;-><init>()V

    const-string v2, "TIME"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/filepicker/sort/SortType;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->TIME:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    new-instance v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/filepicker/sort/SortType;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->NONE:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    invoke-static {}, Lcom/onyx/android/sdk/filepicker/sort/SortType;->$values()[Lcom/onyx/android/sdk/filepicker/sort/SortType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->$VALUES:[Lcom/onyx/android/sdk/filepicker/sort/SortType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/filepicker/sort/SortType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->$VALUES:[Lcom/onyx/android/sdk/filepicker/sort/SortType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/filepicker/sort/SortType;

    return-object v0
.end method


# virtual methods
.method public final getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/sort/SortType;->comparator:Ljava/util/Comparator;

    return-object p0
.end method
