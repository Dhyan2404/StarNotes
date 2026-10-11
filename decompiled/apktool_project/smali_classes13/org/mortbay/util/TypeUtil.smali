.class public Lorg/mortbay/util/TypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CR:I = 0xd

.field public static LF:I = 0xa

.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static d:[Ljava/lang/Class;

.field public static e:I

.field public static f:[Ljava/lang/Integer;

.field public static g:[Ljava/lang/String;

.field public static h:Ljava/lang/Integer;

.field public static i:I

.field public static j:[Ljava/lang/Long;

.field public static k:Ljava/lang/Long;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;

.field public static synthetic o:Ljava/lang/Class;

.field public static synthetic p:Ljava/lang/Class;

.field public static synthetic q:Ljava/lang/Class;

.field public static synthetic r:Ljava/lang/Class;

.field public static synthetic s:Ljava/lang/Class;

.field public static synthetic t:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    const-string v0, "valueOf"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/mortbay/util/TypeUtil;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "boolean"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v5, "byte"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v6, "char"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v7, "double"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v8, "float"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "int"

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v12, "long"

    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v14, "short"

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v15, "void"

    invoke-virtual {v1, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "java.lang.Boolean.TYPE"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "java.lang.Byte.TYPE"

    move-object/from16 v16, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Character.TYPE"

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Double.TYPE"

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Float.TYPE"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Integer.TYPE"

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Long.TYPE"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Short.TYPE"

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.lang.Void.TYPE"

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    const-string v13, "java.lang.Boolean"

    if-nez v0, :cond_0

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    move-object/from16 v17, v15

    const-string v15, "java.lang.Byte"

    if-nez v0, :cond_1

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    move-object/from16 v18, v14

    const-string v14, "java.lang.Character"

    if-nez v0, :cond_2

    invoke-static {v14}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    move-object/from16 v19, v11

    const-string v11, "java.lang.Double"

    if-nez v0, :cond_3

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    move-object/from16 v20, v12

    const-string v12, "java.lang.Float"

    if-nez v0, :cond_4

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    move-object/from16 v21, v9

    const-string v9, "java.lang.Integer"

    if-nez v0, :cond_5

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    move-object/from16 v22, v10

    const-string v10, "java.lang.Long"

    if-nez v0, :cond_6

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_6
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    move-object/from16 v23, v4

    const-string v4, "java.lang.Short"

    if-nez v0, :cond_7

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_7
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    if-nez v0, :cond_8

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_8
    move-object/from16 v24, v13

    const-string v13, "Boolean"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    if-nez v0, :cond_9

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_9
    const-string v13, "Byte"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    if-nez v0, :cond_a

    invoke-static {v14}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    :cond_a
    const-string v13, "Character"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    if-nez v0, :cond_b

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_b
    const-string v13, "Double"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    if-nez v0, :cond_c

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_c
    const-string v13, "Float"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    if-nez v0, :cond_d

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_d
    const-string v13, "Integer"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    if-nez v0, :cond_e

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_e
    const-string v13, "Long"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    if-nez v0, :cond_f

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_f
    const-string v13, "Short"

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    const-string v13, "java.lang.String"

    if-nez v0, :cond_10

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_10
    move-object/from16 v25, v4

    const-string v4, "string"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v0, :cond_11

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_11
    const-string v4, "String"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v0, :cond_12

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_12
    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v6, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v6, v17

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    if-nez v5, :cond_13

    invoke-static/range {v24 .. v24}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_13
    move-object/from16 v7, v24

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    if-nez v5, :cond_14

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_14
    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    if-nez v5, :cond_15

    invoke-static {v14}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    :cond_15
    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    if-nez v5, :cond_16

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_16
    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    if-nez v5, :cond_17

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_17
    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    if-nez v5, :cond_18

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_18
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    if-nez v5, :cond_19

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_19
    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    if-nez v5, :cond_1a

    invoke-static/range {v25 .. v25}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_1a
    move-object/from16 v8, v25

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v5, :cond_1b

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_1b
    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->c:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-array v14, v6, [Ljava/lang/Class;

    sget-object v17, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v17, :cond_1c

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sput-object v17, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_1c
    aput-object v17, v14, v5

    sget-object v17, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    if-nez v17, :cond_1d

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sput-object v17, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_1d
    move-object/from16 v5, v17

    move-object/from16 v6, v16

    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    if-nez v5, :cond_1e

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_1e
    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v5, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    if-nez v5, :cond_1f

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_1f
    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    if-nez v2, :cond_20

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_20
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_21

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_21
    invoke-virtual {v1, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_22

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_22
    invoke-virtual {v1, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    if-nez v2, :cond_23

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_23
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    if-nez v1, :cond_24

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_24
    sget-object v2, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    if-nez v2, :cond_25

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->l:Ljava/lang/Class;

    :cond_25
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    if-nez v1, :cond_26

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_26
    sget-object v2, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    if-nez v2, :cond_27

    invoke-static {v15}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->m:Ljava/lang/Class;

    :cond_27
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    if-nez v1, :cond_28

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_28
    sget-object v2, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    if-nez v2, :cond_29

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->o:Ljava/lang/Class;

    :cond_29
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    if-nez v1, :cond_2a

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_2a
    sget-object v2, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    if-nez v2, :cond_2b

    invoke-static {v12}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->p:Ljava/lang/Class;

    :cond_2b
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    if-nez v1, :cond_2c

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_2c
    sget-object v2, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    if-nez v2, :cond_2d

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->q:Ljava/lang/Class;

    :cond_2d
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    if-nez v1, :cond_2e

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_2e
    sget-object v2, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    if-nez v2, :cond_2f

    invoke-static {v10}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->r:Ljava/lang/Class;

    :cond_2f
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    if-nez v1, :cond_30

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_30
    sget-object v2, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    if-nez v2, :cond_31

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/TypeUtil;->s:Ljava/lang/Class;

    :cond_31
    invoke-virtual {v2, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v1, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_32

    invoke-static {v13}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_32
    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/mortbay/util/TypeUtil;->d:[Ljava/lang/Class;

    const-string v0, "org.mortbay.util.TypeUtil.IntegerCacheSize"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/util/TypeUtil;->e:I

    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lorg/mortbay/util/TypeUtil;->f:[Ljava/lang/Integer;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/TypeUtil;->g:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->h:Ljava/lang/Integer;

    const-string v0, "org.mortbay.util.TypeUtil.LongCacheSize"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/mortbay/util/TypeUtil;->i:I

    new-array v0, v0, [Ljava/lang/Long;

    sput-object v0, Lorg/mortbay/util/TypeUtil;->j:[Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/mortbay/util/TypeUtil;->k:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static convertHexDigit(B)B
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_1
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/mortbay/util/TypeUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ".class"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/mortbay/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "jar:file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/URL;

    const-string v2, "!/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static newInteger(I)Ljava/lang/Integer;
    .locals 2

    if-ltz p0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->e:I

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/mortbay/util/TypeUtil;->f:[Ljava/lang/Integer;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->f:[Ljava/lang/Integer;

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/mortbay/util/TypeUtil;->h:Ljava/lang/Integer;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static newLong(J)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    sget v0, Lorg/mortbay/util/TypeUtil;->i:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    sget-object v0, Lorg/mortbay/util/TypeUtil;->j:[Ljava/lang/Long;

    long-to-int v1, p0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    :cond_0
    sget-object p0, Lorg/mortbay/util/TypeUtil;->j:[Ljava/lang/Long;

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    sget-object p0, Lorg/mortbay/util/TypeUtil;->k:Ljava/lang/Long;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-static {p0, v2, v1, p1}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-gez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_5

    add-int v2, p1, v0

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v2, -0x30

    const/16 v4, 0xa

    if-ltz v3, :cond_1

    if-ge v3, p3, :cond_1

    if-lt v3, v4, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v2, -0x41

    if-lt v3, v4, :cond_2

    if-lt v3, p3, :cond_3

    :cond_2
    add-int/lit8 v3, v2, -0x61

    :cond_3
    if-ltz v3, :cond_4

    if-ge v3, p3, :cond_4

    mul-int/2addr v1, p3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_4
    new-instance p3, Ljava/lang/NumberFormatException;

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    return v1
.end method

.method public static parseInt([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-gez p2, :cond_0

    .line 4
    array-length p2, p0

    sub-int/2addr p2, p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_5

    add-int v2, p1, v0

    .line 5
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v3, v2, -0x30

    const/16 v4, 0xa

    if-ltz v3, :cond_1

    if-ge v3, p3, :cond_1

    if-lt v3, v4, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v2, -0x41

    if-lt v3, v4, :cond_2

    if-lt v3, p3, :cond_3

    :cond_2
    add-int/lit8 v3, v2, -0x61

    :cond_3
    if-ltz v3, :cond_4

    if-ge v3, p3, :cond_4

    mul-int/2addr v1, p3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_4
    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    return v1
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v6

    if-ne v3, v6, :cond_1

    sget v7, Lorg/mortbay/util/TypeUtil;->LF:I

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    sget v7, Lorg/mortbay/util/TypeUtil;->CR:I

    if-eq v5, v7, :cond_4

    sget v7, Lorg/mortbay/util/TypeUtil;->LF:I

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    array-length v6, v1

    if-lt v4, v6, :cond_3

    array-length v6, v1

    add-int/2addr v6, v0

    new-array v6, v6, [B

    array-length v7, v1

    invoke-static {v1, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v6

    :cond_3
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    move v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    if-nez v4, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget v0, Lorg/mortbay/util/TypeUtil;->CR:I

    if-ne v5, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, v6, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    sget v3, Lorg/mortbay/util/TypeUtil;->LF:I

    if-eq v0, v3, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_6
    new-array p0, v4, [B

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 4
    div-int/lit8 v3, v2, 0x10

    rem-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x41

    :cond_0
    int-to-char v3, v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    rem-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x30

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    :cond_1
    int-to-char v2, v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 5

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 10
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 11
    div-int/lit8 v3, v2, 0x10

    rem-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x41

    :cond_0
    int-to-char v3, v3

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 13
    rem-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x30

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    :cond_1
    int-to-char v2, v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mortbay/util/TypeUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    .line 1
    sget v0, Lorg/mortbay/util/TypeUtil;->e:I

    if-ge p0, v0, :cond_1

    .line 2
    sget-object v0, Lorg/mortbay/util/TypeUtil;->g:[Ljava/lang/String;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 4
    :cond_0
    sget-object v0, Lorg/mortbay/util/TypeUtil;->g:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    const-string p0, "-1"

    return-object p0

    .line 5
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 6
    sget v0, Lorg/mortbay/util/TypeUtil;->e:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 7
    sget-object v0, Lorg/mortbay/util/TypeUtil;->g:[Ljava/lang/String;

    long-to-int v1, p0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 9
    :cond_0
    sget-object p0, Lorg/mortbay/util/TypeUtil;->g:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const-string p0, "-1"

    return-object p0

    .line 10
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 5

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 13
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 14
    div-int v3, v2, p1

    rem-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    :cond_0
    int-to-char v3, v3

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    rem-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x30

    if-le v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    :cond_1
    int-to-char v2, v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->t:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 2
    :cond_1
    sget-object v1, Lorg/mortbay/util/TypeUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Character"

    invoke-static {v1}, Lorg/mortbay/util/TypeUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/TypeUtil;->n:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    sget-object v1, Lorg/mortbay/util/TypeUtil;->d:[Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-nez p1, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :catch_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-static {p0}, Lorg/mortbay/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mortbay/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
