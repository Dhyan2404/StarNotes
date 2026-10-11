.class final enum Lnet/sf/saxon/om/MemoSequence$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/MemoSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/om/MemoSequence$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/om/MemoSequence$State;

.field public static final enum ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

.field public static final enum BUSY:Lnet/sf/saxon/om/MemoSequence$State;

.field public static final enum EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

.field public static final enum MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

.field public static final enum UNREAD:Lnet/sf/saxon/om/MemoSequence$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/sf/saxon/om/MemoSequence$State;

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/om/MemoSequence$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/om/MemoSequence$State;->UNREAD:Lnet/sf/saxon/om/MemoSequence$State;

    new-instance v1, Lnet/sf/saxon/om/MemoSequence$State;

    const-string v2, "MAYBE_MORE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/om/MemoSequence$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/om/MemoSequence$State;->MAYBE_MORE:Lnet/sf/saxon/om/MemoSequence$State;

    new-instance v2, Lnet/sf/saxon/om/MemoSequence$State;

    const-string v3, "ALL_READ"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/om/MemoSequence$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/om/MemoSequence$State;->ALL_READ:Lnet/sf/saxon/om/MemoSequence$State;

    new-instance v3, Lnet/sf/saxon/om/MemoSequence$State;

    const-string v4, "BUSY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/MemoSequence$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/om/MemoSequence$State;->BUSY:Lnet/sf/saxon/om/MemoSequence$State;

    new-instance v4, Lnet/sf/saxon/om/MemoSequence$State;

    const-string v5, "EMPTY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/om/MemoSequence$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/om/MemoSequence$State;->EMPTY:Lnet/sf/saxon/om/MemoSequence$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/om/MemoSequence$State;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/om/MemoSequence$State;->$VALUES:[Lnet/sf/saxon/om/MemoSequence$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/om/MemoSequence$State;
    .locals 1

    const-class v0, Lnet/sf/saxon/om/MemoSequence$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/MemoSequence$State;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/om/MemoSequence$State;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/MemoSequence$State;->$VALUES:[Lnet/sf/saxon/om/MemoSequence$State;

    invoke-virtual {v0}, [Lnet/sf/saxon/om/MemoSequence$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/MemoSequence$State;

    return-object v0
.end method
