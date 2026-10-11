.class public final enum Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/flwor/Clause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClauseName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/expr/flwor/Clause$ClauseName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum COUNT:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum DIAG:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum FOR:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum FOR_MEMBER:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum GROUP_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum LET:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum ORDER_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum TRACE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum WHERE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

.field public static final enum WINDOW:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v1, "FOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->FOR:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v1, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v2, "LET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->LET:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v2, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v3, "WINDOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->WINDOW:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v3, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v4, "GROUP_BY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->GROUP_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v4, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v5, "COUNT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->COUNT:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v5, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v6, "ORDER_BY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->ORDER_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v6, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v7, "WHERE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->WHERE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v7, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v8, "TRACE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->TRACE:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v8, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v9, "DIAG"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->DIAG:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    new-instance v9, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    const-string v10, "FOR_MEMBER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->FOR_MEMBER:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    filled-new-array/range {v0 .. v9}, [Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->$VALUES:[Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 1

    const-class v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->$VALUES:[Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    invoke-virtual {v0}, [Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object v0
.end method
