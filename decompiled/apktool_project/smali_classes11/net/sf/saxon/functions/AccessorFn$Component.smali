.class public final enum Lnet/sf/saxon/functions/AccessorFn$Component;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AccessorFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/functions/AccessorFn$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum LOCALNAME:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum NAMESPACE:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum NANOSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum PREFIX:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum TIMEZONE:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

.field public static final enum YEAR_ALLOWING_ZERO:Lnet/sf/saxon/functions/AccessorFn$Component;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v1, "YEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v1, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v2, "MONTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->MONTH:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v2, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v3, "DAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/functions/AccessorFn$Component;->DAY:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v3, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v4, "HOURS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v4, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v5, "MINUTES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v5, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v6, "SECONDS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/functions/AccessorFn$Component;->SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v6, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v7, "TIMEZONE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/functions/AccessorFn$Component;->TIMEZONE:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v7, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v8, "LOCALNAME"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/functions/AccessorFn$Component;->LOCALNAME:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v8, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v9, "NAMESPACE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/functions/AccessorFn$Component;->NAMESPACE:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v9, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v10, "PREFIX"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/functions/AccessorFn$Component;->PREFIX:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v10, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v11, "MICROSECONDS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/sf/saxon/functions/AccessorFn$Component;->MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v11, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v12, "NANOSECONDS"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/sf/saxon/functions/AccessorFn$Component;->NANOSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v12, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v13, "WHOLE_SECONDS"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/sf/saxon/functions/AccessorFn$Component;->WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    new-instance v13, Lnet/sf/saxon/functions/AccessorFn$Component;

    const-string v14, "YEAR_ALLOWING_ZERO"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lnet/sf/saxon/functions/AccessorFn$Component;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/sf/saxon/functions/AccessorFn$Component;->YEAR_ALLOWING_ZERO:Lnet/sf/saxon/functions/AccessorFn$Component;

    filled-new-array/range {v0 .. v13}, [Lnet/sf/saxon/functions/AccessorFn$Component;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->$VALUES:[Lnet/sf/saxon/functions/AccessorFn$Component;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/functions/AccessorFn$Component;
    .locals 1

    const-class v0, Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/AccessorFn$Component;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/functions/AccessorFn$Component;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->$VALUES:[Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0}, [Lnet/sf/saxon/functions/AccessorFn$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/functions/AccessorFn$Component;

    return-object v0
.end method
