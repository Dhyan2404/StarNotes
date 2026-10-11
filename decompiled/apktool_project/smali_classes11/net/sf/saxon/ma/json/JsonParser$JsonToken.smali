.class public final enum Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/json/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/ma/json/JsonParser$JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum COLON:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum COMMA:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum FALSE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum LCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum LSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum NULL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum NUMERIC_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum STRING_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum TRUE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public static final enum UNQUOTED_STRING:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v1, "LSQB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->LSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v1, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v2, "RSQB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v3, "LCURLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->LCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v4, "RCURLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v4, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v5, "STRING_LITERAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->STRING_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v5, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v6, "NUMERIC_LITERAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->NUMERIC_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v6, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v7, "TRUE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->TRUE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v7, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v8, "FALSE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->FALSE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v8, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v9, "NULL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->NULL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v9, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v10, "COLON"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COLON:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v10, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v11, "COMMA"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COMMA:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v11, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v12, "UNQUOTED_STRING"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->UNQUOTED_STRING:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    new-instance v12, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v13, "EOF"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    filled-new-array/range {v0 .. v12}, [Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->$VALUES:[Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
    .locals 1

    const-class v0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
    .locals 1

    sget-object v0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->$VALUES:[Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    invoke-virtual {v0}, [Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object v0
.end method
