# 300ETF期权学院 - 微信小程序开发计划

## 项目概述

将现有的网页版300ETF期权学院转换为微信小程序，利用微信生态优势（微信支付、社交分享、公众号联动）。

## 技术栈

- **框架**: 微信小程序原生开发
- **UI组件**: Vant Weapp / WeUI
- **云开发**: 微信云开发（数据库、存储、云函数）
- **图表**: ECharts for 微信小程序
- **动画**: Lottie / 小程序动画API

---

## 开发阶段规划

### Phase 1: 基础架构搭建（第1-2天）

**任务清单：**
1. 创建小程序项目结构
2. 配置全局样式、主题色
3. 搭建底部TabBar导航
4. 创建公共组件库
5. 封装网络请求、本地存储

**核心页面：**
- `pages/index/index` - 首页
- `pages/lessons/lessons` - 课程列表
- `pages/exam/exam` - 考试专区
- `pages/profile/profile` - 个人中心

### Phase 2: 课程系统迁移（第3-4天）

**任务清单：**
1. 第一课：期权基础概念
2. 第二课：看涨期权
3. 第三课：看跌期权
4. 第五课：策略实验室
5. 第六课：隐含波动率
6. BS公式课
7. 希腊字母课

**技术要点：**
- 互动演示组件化
- 测验系统（单选/多选）
- 学习进度保存（Storage + 云同步）
- 富文本内容渲染

### Phase 3: 模拟交易系统（第5-6天）

**任务清单：**
1. 虚拟资金账户系统
2. 10天交易周期
3. 市场事件系统
4. 交易记录与盈亏统计
5. 排行榜功能

**技术要点：**
- 游戏状态管理
- 动画效果（价格变动）
- 本地存储 + 云端备份

### Phase 4: 考试专区（第7天）

**任务清单：**
1. 题库系统（200+题目）
2. 模拟考试（计时、自动提交）
3. 错题本功能
4. 成绩统计与分享

### Phase 5: 用户系统与社交（第8-9天）

**任务清单：**
1. 微信登录授权
2. 学习天数统计
3. 成就徽章系统
4. 排行榜（好友/全国）
5. 学习进度分享
6. 打卡分享图生成

### Phase 6: 高级功能（第10天）

**任务清单：**
1. 与公众号联动
2. 消息推送（学习提醒）
3. 离线缓存（断网学习）
4. 性能优化
5. 适配各类机型

---

## 小程序页面结构

```
├── pages/
│   ├── index/              # 首页
│   │   ├── index.wxml
│   │   ├── index.wxss
│   │   └── index.js
│   ├── lessons/            # 课程列表
│   ├── lesson-detail/      # 课程详情
│   ├── simulator/          # 模拟交易
│   ├── exam/               # 考试专区
│   ├── exam-test/          # 考试页面
│   ├── mistake-book/       # 错题本
│   ├── profile/            # 个人中心
│   └── ranking/            # 排行榜
├── components/             # 公共组件
│   ├── option-card/        # 期权卡片
│   ├── quiz/               # 测验组件
│   ├── progress-bar/       # 进度条
│   └── price-chart/        # 价格图表
├── utils/                  # 工具函数
├── cloud/                  # 云函数
└── static/                 # 静态资源
```

---

## 数据结构设计

### 用户数据
```javascript
{
  _openid: string,
  nickName: string,
  avatarUrl: string,
  studyDays: number,
  completedLessons: array,
  totalProgress: number,
  achievements: array,
  simulatorData: object,
  examRecords: array,
  createdAt: timestamp
}
```

### 课程数据
```javascript
{
  lessonId: string,
  title: string,
  icon: string,
  content: array,      // 富文本内容块
  quiz: array,         // 测验题目
  interactive: object, // 互动演示配置
  order: number
}
```

### 题库数据
```javascript
{
  questionId: string,
  type: 'single' | 'multiple',
  content: string,
  options: array,
  correct: number | array,
  explanation: string,
  category: string,
  difficulty: 1-3
}
```

---

## 核心功能实现

### 1. 学习进度管理
- 本地：wx.getStorageSync / wx.setStorageSync
- 云端：云数据库自动同步
- 冲突解决：时间戳优先

### 2. 模拟交易系统
- 本地状态机管理
- 10天循环 + 随机事件
- 交易记录本地存储

### 3. 考试系统
- 随机抽题算法
- 倒计时组件
- 自动判卷 + 解析

### 4. 分享功能
- 生成分享海报（canvas绘制）
- 好友邀请追踪
- 学习打卡分享

---

## 开发里程碑

| 阶段 | 时间 | 交付物 |
|------|------|--------|
| Phase 1 | Day 1-2 | 基础框架 + 首页 |
| Phase 2 | Day 3-4 | 8个课程模块 |
| Phase 3 | Day 5-6 | 模拟交易系统 |
| Phase 4 | Day 7 | 考试专区 |
| Phase 5 | Day 8-9 | 用户系统 + 社交 |
| Phase 6 | Day 10 | 优化 + 测试 |

---

*计划制定: 2026-03-01*
*预计完成: 2026-03-10*
