.class final enum Lnet/sf/saxon/value/Whitespace$TokenCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/Whitespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/value/Whitespace$TokenCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/value/Whitespace$TokenCategory;

.field public static final enum CONTENT:Lnet/sf/saxon/value/Whitespace$TokenCategory;

.field public static final enum FINAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

.field public static final enum INITIAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

.field public static final enum SEPARATOR_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    const-string v1, "INITIAL_WHITESPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Whitespace$TokenCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->INITIAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    new-instance v1, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    const-string v2, "SEPARATOR_WHITESPACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Whitespace$TokenCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/value/Whitespace$TokenCategory;->SEPARATOR_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    new-instance v2, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    const-string v3, "FINAL_WHITESPACE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/value/Whitespace$TokenCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/value/Whitespace$TokenCategory;->FINAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    new-instance v3, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    const-string v4, "CONTENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/value/Whitespace$TokenCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/value/Whitespace$TokenCategory;->CONTENT:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    filled-new-array {v0, v1, v2, v3}, [Lnet/sf/saxon/value/Whitespace$TokenCategory;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->$VALUES:[Lnet/sf/saxon/value/Whitespace$TokenCategory;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/value/Whitespace$TokenCategory;
    .locals 1

    const-class v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/Whitespace$TokenCategory;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/value/Whitespace$TokenCategory;
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->$VALUES:[Lnet/sf/saxon/value/Whitespace$TokenCategory;

    invoke-virtual {v0}, [Lnet/sf/saxon/value/Whitespace$TokenCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/value/Whitespace$TokenCategory;

    return-object v0
.end method
