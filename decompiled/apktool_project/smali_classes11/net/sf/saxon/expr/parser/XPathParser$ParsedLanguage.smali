.class public final enum Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/XPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParsedLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field public static final enum EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field public static final enum SEQUENCE_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field public static final enum XPATH:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field public static final enum XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

.field public static final enum XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const-string v1, "XPATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XPATH:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const-string v2, "XSLT_PATTERN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v2, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const-string v3, "SEQUENCE_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->SEQUENCE_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v3, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const-string v4, "XQUERY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XQUERY:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    new-instance v4, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const-string v5, "EXTENDED_ITEM_TYPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->EXTENDED_ITEM_TYPE:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->$VALUES:[Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;
    .locals 1

    const-class v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->$VALUES:[Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {v0}, [Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    return-object v0
.end method
