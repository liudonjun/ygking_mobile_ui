import 'package:flutter/material.dart';
import '../src/styles/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHero(),
                  _buildFeatures(),
                  _buildComponents(),
                  _buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: YGColors.borderColor),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'YGKing UI',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: YGColors.primary,
            ),
          ),
          const Spacer(),
          _buildHeaderLink('指南'),
          const SizedBox(width: 32),
          _buildHeaderLink('组件'),
          const SizedBox(width: 32),
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: () {
              // TODO: 打开 GitHub
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderLink(String text) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: YGColors.textRegular,
        ),
      ),
    );
  }

  Widget _buildHero() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'YGKing Mobile UI',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: YGColors.textPrimary,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            '一个现代化的 Flutter 移动端组件库',
            style: TextStyle(
              fontSize: 24,
              color: YGColors.textRegular,
            ),
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: YGColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  '开始使用',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: YGColors.success,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  '查看组件',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatures() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        children: [
          const Text(
            '特性',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: YGColors.textPrimary,
            ),
          ),
          const SizedBox(height: 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              _buildFeatureCard(
                '组件丰富',
                '提供丰富的移动端组件，满足各种业务场景需求',
                Icons.apps,
              ),
              _buildFeatureCard(
                '主题定制',
                '支持灵活的主题配置，轻松打造品牌专属样式',
                Icons.palette,
              ),
              _buildFeatureCard(
                '文档完善',
                '详细的文档说明和示例代码，快速上手无压力',
                Icons.description,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description, IconData icon) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(color: YGColors.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: YGColors.primary),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: YGColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: YGColors.textRegular,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComponents() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        children: [
          const Text(
            '组件预览',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: YGColors.textPrimary,
            ),
          ),
          const SizedBox(height: 48),
          // TODO: 添加组件预览
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: const Text(
        '© 2024 YGKing Mobile UI. All rights reserved.',
        style: TextStyle(
          color: YGColors.textSecondary,
        ),
      ),
    );
  }
}
