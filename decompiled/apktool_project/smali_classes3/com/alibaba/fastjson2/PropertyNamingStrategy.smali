.class public final enum Lcom/alibaba/fastjson2/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 18

    sget-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v3, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v4, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v5, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v6, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v7, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v8, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v9, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v10, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v11, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v12, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v13, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v14, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v15, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v16, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    sget-object v17, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    filled-new-array/range {v0 .. v17}, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "CamelCase1x"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "PascalCase"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "SnakeCase"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCase"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithSpaces"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithUnderScores"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithDashes"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithDots"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "KebabCase"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCaseWithUnderScores"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCaseWithDashes"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "UpperCaseWithDots"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "LowerCase"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithUnderScores"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithDashes"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithDots"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    const-string v1, "NeverUseThisValueExceptDefaultValue"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-static {}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->$values()[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

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

.method public static snakeToCamel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_6

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v2, v2, [C

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_4

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    :cond_4
    add-int/lit8 v5, v3, 0x1

    aput-char v4, v2, v3

    move v3, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public fieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
