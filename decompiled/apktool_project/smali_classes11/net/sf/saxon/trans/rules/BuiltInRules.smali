.class public final enum Lnet/sf/saxon/trans/rules/BuiltInRules;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/trans/rules/BuiltInRules;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum APPLY_TEMPLATES_TO_ATTRIBUTES:Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum APPLY_TEMPLATES_TO_CHILDREN:Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum DEEP_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum DEEP_SKIP:Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum FAIL:Lnet/sf/saxon/trans/rules/BuiltInRules;

.field public static final enum SHALLOW_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v1, "DEEP_COPY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/trans/rules/BuiltInRules;->DEEP_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;

    new-instance v1, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v2, "DEEP_SKIP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/trans/rules/BuiltInRules;->DEEP_SKIP:Lnet/sf/saxon/trans/rules/BuiltInRules;

    new-instance v2, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v3, "FAIL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/trans/rules/BuiltInRules;->FAIL:Lnet/sf/saxon/trans/rules/BuiltInRules;

    new-instance v3, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v4, "SHALLOW_COPY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/trans/rules/BuiltInRules;->SHALLOW_COPY:Lnet/sf/saxon/trans/rules/BuiltInRules;

    new-instance v4, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v5, "APPLY_TEMPLATES_TO_ATTRIBUTES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_ATTRIBUTES:Lnet/sf/saxon/trans/rules/BuiltInRules;

    new-instance v5, Lnet/sf/saxon/trans/rules/BuiltInRules;

    const-string v6, "APPLY_TEMPLATES_TO_CHILDREN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/trans/rules/BuiltInRules;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_CHILDREN:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/rules/BuiltInRules;->$VALUES:[Lnet/sf/saxon/trans/rules/BuiltInRules;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 1

    const-class v0, Lnet/sf/saxon/trans/rules/BuiltInRules;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/rules/BuiltInRules;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/rules/BuiltInRules;->$VALUES:[Lnet/sf/saxon/trans/rules/BuiltInRules;

    invoke-virtual {v0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    return-object v0
.end method
