.class public final enum Lnet/sf/saxon/style/SourceBinding$BindingProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/style/SourceBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindingProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum IMPLICITLY_DECLARED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum IMPLICITLY_REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum PRIVATE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

.field public static final enum VISIBILITY:Lnet/sf/saxon/style/SourceBinding$BindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PRIVATE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v2, "GLOBAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->GLOBAL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v3, "PARAM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->PARAM:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v4, "TUNNEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v5, "REQUIRED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v5, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v6, "IMPLICITLY_REQUIRED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_REQUIRED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v6, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v7, "ASSIGNABLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->ASSIGNABLE:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v7, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v8, "SELECT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v8, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v9, "AS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v9, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v10, "DISALLOWS_CONTENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->DISALLOWS_CONTENT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v10, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v11, "STATIC"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->STATIC:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v11, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v12, "VISIBILITY"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->VISIBILITY:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    new-instance v12, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    const-string v13, "IMPLICITLY_DECLARED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lnet/sf/saxon/style/SourceBinding$BindingProperty;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->IMPLICITLY_DECLARED:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    filled-new-array/range {v0 .. v12}, [Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->$VALUES:[Lnet/sf/saxon/style/SourceBinding$BindingProperty;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/style/SourceBinding$BindingProperty;
    .locals 1

    const-class v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/style/SourceBinding$BindingProperty;
    .locals 1

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->$VALUES:[Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v0}, [Lnet/sf/saxon/style/SourceBinding$BindingProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    return-object v0
.end method
