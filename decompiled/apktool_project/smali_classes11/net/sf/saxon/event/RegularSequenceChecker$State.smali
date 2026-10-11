.class public final enum Lnet/sf/saxon/event/RegularSequenceChecker$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/RegularSequenceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/event/RegularSequenceChecker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum FINAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum INITIAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public static final enum START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->INITIAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    new-instance v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    new-instance v2, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v3, "START_TAG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->START_TAG:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    new-instance v3, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v4, "CONTENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    new-instance v4, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v5, "FINAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FINAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    new-instance v5, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    const-string v6, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/event/RegularSequenceChecker$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/event/RegularSequenceChecker$State;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->$VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$State;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/event/RegularSequenceChecker$State;
    .locals 1

    const-class v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/event/RegularSequenceChecker$State;
    .locals 1

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->$VALUES:[Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-virtual {v0}, [Lnet/sf/saxon/event/RegularSequenceChecker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-object v0
.end method
